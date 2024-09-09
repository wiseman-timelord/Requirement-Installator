# Requirement-Installator
Status: Working

### Description:
An adapded version of a late stage of one of my `Install-Setup.Bat`, made to install requirements at the click of a button, for any python application that has a `requirements.txt`. I dont have endless amounts of hard-drive space, with the, models and games and videos, it becomes a juggling act, so you better believe I am not using environments for python, endless mirrors of already installed packaged, some individually 2.5GB, hence, the individual python version is the environment, and I try and spread my applications across versions of python, and hope they dont break each other, or if they do then shift the apps to diff versions of python; thats the kind of use expected here.

### Features:
- Superb Menu and Banner System.
- Comprihensive `requirements.txt` install.
- Drop-in Script or Stored Tool, either options work.
- Pause at end of each output.

### Preview:
- `Requirement-Installator.Bat` in action...
```
========================================================================================================================
    Requirement-Installator
========================================================================================================================




    1. Change Python Version
        (v311)

    2. Install Requirements
        (Status: Missing)

    3. Upgrade Pip To Latest
        (v24.2)

    4. Re-Install Setup-Tools
        (v74.1.2)

    5. Check Dependencies
        (Including Unrelated)




========================================================================================================================
Selection; Menu Options = 1-5, Exit Program = X:

```

## Install And Use:
1. Download and unpack to, a suitable directory for using remotely on `requirements.txt` files or the same Directory as the `requirements.txt` you intend to install.
2. Change to the version of python you wish to use and install for.
3. Install the `requirements.txt`, if its `missing` then it will prompt you to enter the full-path to the `requirements.txt`, or if the script is in the same folder as `requirements.txt`, then it, will report `found` and will just install that one.
3. if there are issues with installing your `requirements.txt`, then you should intelligently try, Option 3 and/or Option 4, and if it relates to dependency incompatibilities, then option 5 will help with that.
4. If there are still issues, then use the information the program provides, to search online for solutions to your issues, or input the output to online AI programming assistant such as, Claude or GPT, with a little prompt asking for help.

### Notation:
- Ensure you ignore any dependency compatibility issues, if they are not for the SPECIFIC VERSION of the SPECIFIC, PROGRAMS AND LIBRARIES, that you are trying to use currently, as solving them may cause a loop in your activities. 
- Again, you can either, possibly use 1 version of python if you only use a few applications or shift between versions of python to find a version where critical versions of libraries wont be over-written.

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
