![Alt text](../../images/wildlife-ai-logo.png)

# Wildlife Watcher User Guide

From [wildlife.ai](https://wildlife.ai/)  
For [Wildlife Watcher](https://wildlife.ai/projects/wildlife-watcher/) project

## Setup the device

[![Download PDF](https://img.shields.io/badge/Download-PDF-blue)](../pdf/wildlife_watcher_user_guide_setup_the_device.pdf)

### 1. Setup the camera

#### 1.1 Powering the Camera

##### Battery Pack Mode

Ensure the internal battery is fully charged using the USB charging cable.

##### AA Batteries Mode

Ensure that you use high quality powerful, lasting AA batteries for the camera to stay active for the desired number of days. (e.g. … battery will last x number of days)

##### Solar Mode

If using the optional solar panel, connect it to the camera and place it in a well-lit area

#### 1.2. Camera Setup

##### Connect camera to a power source

- Insert AA batteries
- Open flap with battery picture on it
- Insert batteries as shown and close it
- Check that camera powers on
- Connect battery pack
- Charge battery pack using USB cable
- Open battery pack slot?
- Insert battery pack
- Check that camera powers on
- Connect solar panel
- Using USB cable - connect camera to solar battery pack
- Ensure that the solar panel is placed in a well lit area
- Check that camera powers on

##### Insert SD card

- Open the SD card slot
- Enter the SD card

#### 1.3. Camera add-ons

- Optionally user can connect another camera to the camera trap if the goal is to take high resolution photos
- Users need to:
  - Plug in the additional camera via the USB port?
  - Specify which camera to use when starting deployment (see below)
  - Check if the camera is working by following the steps in ‘Camera testing’ section (How to test an additional camera?)

#### 1.4. Mounting the Camera

- Choose a strategic location with a clear view of the area to be monitored
- Camera pointing to the ground
  - Use the camera stand to place the device securely facing the ground
  - Adjust the angle to cover the desired field of view.
  - Fix the wildlife platform in the camera view
  - Set up additional equipment:
    - Bait
    - other (tbc)  
- Camera attached to a poll/tree
  - Use straps and mounting clasps to fix the device onto a tree trunk/poll
  - Adjust the angle
  - Set up additional equipment:
    - Bait
    - other (tbc)

### 2. Connect the device to the camera

### 3. Machine learning model management

Using Edge Impulse (see [setup external tools](wildlife_watcher_user_guide_setup_extenal_tool.md)), you can:  

- View available models
- Add model to project
- Train model
- Download model

On the Mobile application (see [setup mobile application](wildlife_watcher_user_guide_setup_mobile_app.md)), you can:

- Upload model onto the camera (that you can download from Wildlife insights)  
- Go to the devices section of the mobile app
- Select a device or add a new one
- See if there is a model already loaded onto the camera
- If so, remove it
- Upload the downloaded model by selecting it from your files
- After the successful upload - see that the correct model appears on the device

If you can, test camera before deployment to ensure that the model has been deployed correctly - see Camera Testing section below

### 4. Testing the device

#### Camera testing and firmware updates

Before starting deployment we recommend that the camera is tested to ensure that it works and connects properly

Users need to:

- Go into the the Devices section of the app
- See Connecting to the app section for download instructions
- Turn on the camera and Bluetooth
- See Turn on the camera section for instructions
- Select a device from the list
- Check battery level - change batteries if low
- Check SD card space - free up space if low
- Install firmware update if available
- Test camera field view preview  (**in dev**)
- Test a newly loaded machine learning model (**TBC how**)

### 5. Usage Instructions

#### Motion Detection & AI Recognition

- As soon as the camera is deployed it detects motion and automatically takes pictures of wildlife activity.
- AI-powered recognition identifies species
- Users receive real-time alerts and updates via email/phone

#### Night Vision & Low Light Performance

- Infrared sensors enable high-quality recording in low-light conditions (?)
- The camera automatically switches to night mode when necessary. (TBC)

#### Storage & Data Management

- Supports microSD cards up to 128GB for local storage.
- Cloud storage options available through the companion app. (Iteration 2)
- Users can access, download, and share footage directly from the app. (Iteration 2)
