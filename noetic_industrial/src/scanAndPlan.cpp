#include <ros/ros.h>

#include <noetic_industrial/LocalisePart.h>


class ScanAndPlan{
    public:
    ScanAndPlan(ros::NodeHandle& nh){

        vision_client = nh.serviceClient<noetic_industrial::LocalisePart>("localise_part");
    }

    void start(const std::string &base_frame){
        ROS_INFO("Attempting to localise part");

        noetic_industrial::LocalisePart srv;

        srv.request.base_frame = base_frame;

        ROS_INFO_STREAM("requesting pose in base frame" << base_frame);


        if (! vision_client.call(srv)){
            ROS_ERROR("Couldn't localise part");
            return;
        }

        ROS_INFO_STREAM("part localised:" << srv.response);
    }


    private:
    ros::ServiceClient vision_client;

};

int main(int argc, char** argv){

    ros::init(argc, argv,"scanAndPlan");
    ros::NodeHandle nh;
    ros::NodeHandle private_nh ("~");

    std::string base_frame;
    private_nh.param<std::string>("base_frame", base_frame,"world"); // parameter name, string object, default value

    ROS_INFO("scanAndPlan node initialized");

    ScanAndPlan app(nh);

    ros::Duration(.5).sleep();

    app.start(base_frame);

    ros::spin(); // so that the node is not shutdown as the code reached here.
}