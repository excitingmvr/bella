<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>rtcView</title>
    </head>

    <body>
        <h1>rtcView</h1>
        
        <video id="localVideo" autoplay playsinline controls="false"/>
        
<!-- javascript start -->
<script type="text/javascript">


/* 
const constraints = {
	    'video': true,
	    'audio': true
}

navigator.mediaDevices.getUserMedia(constraints)
	.then(stream => {
        console.log('Got MediaStream:', stream);
    })
    .catch(error => {
        console.error('Error accessing media devices.', error);
});
 */

 function getConnectedDevices(type, callback) {
	    navigator.mediaDevices.enumerateDevices()
	        .then(devices => {
	            const filtered = devices.filter(device => device.kind === type);
	            callback(filtered);
	        });
}
	
 getConnectedDevices('videoinput', cameras => console.log('Cameras found', cameras));
 
/*  
//Updates the select element with the provided set of cameras
 function updateCameraList(cameras) {
     const listElement = document.querySelector('select#availableCameras');
     listElement.innerHTML = '';
     cameras.map(camera => {
         const cameraOption = document.createElement('option');
         cameraOption.label = camera.label;
         cameraOption.value = camera.deviceId;
     }).forEach(cameraOption => listElement.add(cameraOption));
 }

 // Fetch an array of devices of a certain type
 async function getConnectedDevices(type) {
     const devices = await navigator.mediaDevices.enumerateDevices();
     return devices.filter(device => device.kind === type)
 }

 // Get the initial set of cameras connected
 const videoCameras = getConnectedDevices('videoinput');
 updateCameraList(videoCameras);

 // Listen for changes to media devices and update the list accordingly
 navigator.mediaDevices.addEventListener('devicechange', event => {
     const newCameraList = getConnectedDevices('video');
     updateCameraList(newCameraList);
 });
  */

/*   
async function getConnectedDevices(type) {
    const devices = await navigator.mediaDevices.enumerateDevices();
    return devices.filter(device => device.kind === type)
}

// Open camera with at least minWidth and minHeight capabilities
async function openCamera(cameraId, minWidth, minHeight) {
    const constraints = {
        'audio': {'echoCancellation': true},
        'video': {
            'deviceId': cameraId,
            'width': {'min': minWidth},
            'height': {'min': minHeight}
            }
        }

    return await navigator.mediaDevices.getUserMedia(constraints);
}

const cameras = getConnectedDevices('videoinput');
if (cameras && cameras.length > 0) {
    // Open first available video camera with a resolution of 1280x720 pixels
    const stream = openCamera(cameras[0].deviceId, 1280, 720);
}
 */
 

 async function playVideoFromCamera() {
	    try {
	        const constraints = {'video': true, 'audio': true};
	        const stream = await navigator.mediaDevices.getUserMedia(constraints);
	        const videoElement = document.querySelector('video#localVideo');
	        videoElement.srcObject = stream;
	    } catch(error) {
	        console.error('Error opening video camera.', error);
	    }
	}
 
 playVideoFromCamera();
</script>
<!-- javascript end -->
    </body>
</html>