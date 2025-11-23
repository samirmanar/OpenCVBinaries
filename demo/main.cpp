#include <iostream>

#include <opencv2/opencv.hpp>

int main(int argc, char* argv[])
{
    // Load image
    cv::Mat img = cv::imread("images/lena.jpg");
    if (img.empty()) {
        std::cerr << "Error: Could not load lena.jpg\n";
        return -1;
    }
    
    // Convert to grayscale
    cv::Mat gray;
    cv::cvtColor(img, gray, cv::COLOR_BGR2GRAY);

    // Edge detection
    cv::Mat edges;
    cv::Canny(gray, edges, 100, 200);

    // Find contours
    std::vector<std::vector<cv::Point>> contours;
    std::vector<cv::Vec4i> hierarchy;
    cv::findContours(edges, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

    // Draw contours on a copy of the image
    cv::Mat output = img.clone();
    cv::drawContours(output, contours, -1, cv::Scalar(0, 0, 255), 2); // red contours

    // Show results
    cv::imshow("Original", img);
    cv::imshow("Edges", edges);
    cv::imshow("Contours", output);
    cv::waitKey(0);    

    return EXIT_SUCCESS;
}
