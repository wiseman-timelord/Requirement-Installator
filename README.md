# Requirements-Installator
Status: Working

### DESCRIPTION:
An adapded version of a late stage of one of my `Install-Setup.Bat`, made to install requirements at the click of a button, for any python application that has a `requirements.txt`. I dont have endless amounts of hard-drive space, with the, models and games and videos, it becomes a juggling act, so you better believe I am not using environments for python, endless mirrors of already installed packaged, some individually 2.5GB, hence, the individual python version is the environment, and I try and spread my applications across versions of python, and hope they dont break each other, or if they do then shift the apps to diff versions of python; thats the kind of use expected here.

### PREVIEW:
- `Universal-Requirements-Installer.Bat` in action...
```
========================================================================================================================
    Requirements-Installator
========================================================================================================================

Status: Administrator
Working Folder: D:\ProgsOthers\Agent-Zero\agent-zero-0.6.2
Found Python: C:\Users\Mastar\AppData\Local\Programs\Python\Python311\python.exe

Ensuring setuptools and wheel are properly installed...
Collecting setuptools
  Using cached setuptools-74.1.2-py3-none-any.whl.metadata (6.7 kB)
...
Successfully installed setuptools-74.1.2 wheel-0.44.0
Setuptools and Wheel, Processes Finished.

Installing Requirements...
Requirement already satisfied: ansio==0.0.1 in c:\users\mastar\appdata\local\programs\python\python311\lib\site-packages (from -r requirements.txt (line 1)) (0.0.1)
...
Requirement already satisfied: pyasn1<0.7.0,>=0.4.6 in c:\users\mastar\appdata\roaming\python\python311\site-packages (from pyasn1-modules>=0.2.1->google-auth>=2.15.0->google-generativeai<0.8.0,>=0.7.0->langchain-google-genai==1.0.7->-r requirements.txt (line 8)) (0.6.0)
Processed: `requirements.txt`

Verifying installation...
'""' is not recognized as an internal or external command,
operable program or batch file.
Warning: Some conflicts may still exist. Please review the output above.

...All processes finished.
Press any key to continue . . .

```

## Install And Use:
1. Download and unpack to the same Directory as the `requirements.txt`, that you intend to install with pip.
2. Edit this line `set "PYTHON_VERSION_NODECIMAL=310"` to have the version relevant to the program the `requirements.txt` relates to (eg. 311 for version 3.11).
3. Run `Requirements-Installator.Bat`, and take a look at the output, it will show if there are any issues, but regardless of issues, just ignore the `Verifying installation...` section for now, and try running the Program you were installing requirements for.
4. If there are problems running the program that  `requirements.txt` relates to you should definately run `Requirements-Installator` again, and ensure to check the `Verifying installation...` section, and determine if any of those dependencies are required for the application to work, and refer to online information regarding dependency issues.

### Notation:
- Ensure you ignore any dependency compatibility issues, if they are not for the SPECIFIC VERSION of the SPECIFIC, PROGRAMS AND LIBRARIES, that you are trying to use currently. 
- Again, you can either, possibly use 1 version of python if you only use a few applications or shift between versions of python to find a version where critical versions of libraries wont be over-written.

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
