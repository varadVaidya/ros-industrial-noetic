#include <ros/ros.h>
#include <fake_ar_publisher/ARMarker.h>
#include <noetic_industrial/LocalisePart.h>

class Localiser{

    public:
    Localiser(ros::NodeHandle &nh){
        ar_sub = nh.subscribe<fake_ar_publisher::ARMarker>("ar_pose_marker",1,& Localiser::visionCallback,this);
        server_ = nh.advertiseService("localise_part",&Localiser::localizePart,this);
    }
    void visionCallback(const fake_ar_publisher::ARMarkerConstPtr& msg){
        last_msg = msg;
        //ROS_INFO_STREAM(last_msg->pose.pose);
    }

    bool localizePart(noetic_industrial::LocalisePart::Request&req,
                    noetic_industrial::LocalisePart::Response &res){
    
        // Read the last msg;

        fake_ar_publisher::ARMarkerConstPtr p = last_msg;

        if(!p) return false;

        res.pose = p->pose.pose;
        return true;
    }
    ros::Subscriber ar_sub;
    fake_ar_publisher::ARMarkerConstPtr last_msg;
    ros::ServiceServer server_ ;

};

int main(int argc, char* argv[])
{
    
    ros::init(argc, argv, "vision_node");

    
    ros::NodeHandle nh;
    Localiser localiser(nh);

    ROS_INFO("Hello, World!");

    // Don't exit the program.
    ros::spin();
}