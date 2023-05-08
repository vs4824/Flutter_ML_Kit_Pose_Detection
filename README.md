# Flutter ML Kit Pose Detection

A Flutter plugin to use Google's ML Kit Pose Detection to detect the pose of a subject's body in real time from a continuous video or static image.

## Getting Started

## Usage

### Pose Detection

Create an instance of InputImage

Create an instance of InputImage as explained here.

   ```
   final InputImage inputImage;
   ```

Create an instance of PoseDetector

   ```
   final options = PoseDetectorOptions();
final poseDetector = PoseDetector(options: options);
   ```

Process image

   ```
   final List<Pose> poses = await poseDetector.processImage(inputImage);

for (Pose pose in poses) {
  // to access all landmarks
  pose.landmarks.forEach((_, landmark) {
    final type = landmark.type;
    final x = landmark.x;
    final y = landmark.y;
 });
  
  // to access specific landmarks
  final landmark = pose.landmarks[PoseLandmarkType.nose];
}
   ```

Release resources with close()

   ```
   poseDetector.close();
   ```
