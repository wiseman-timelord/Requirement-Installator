# SetupInstall-Universal
Its currently the, latest and best, version of my `Setup-Install.Bat`, made to work on any requirements.txt.

### DESCRIPTION:
- I dont have endless amounts of hard-drive space, with the models and my games, and my videos, it becomes a juggling act, so you better believe I am not using environments for python, endless mirrors of already installed packaged, some individually 2.5GB, hence, I try and spread my applications across versions of python, and hope they dont break each other too much, like normal poor people do, well, like I do, and I'm sure there are many like me, or try to be as awesome as me, and may copy me in all kinds of ways, being the inspiring person I am, *ahem*, thus, here is a Universal Setup-Install, that will install requirements at the click of a button, for any python application. 

### PREVIEW:
- `Setup-Install.Bat` in action...
```
========================================================================================================================
    Setup-Installer
========================================================================================================================

Status: Administrator
Working Folder: D:\ProgsOthers\Agent-Zero\agent-zero-0.6.2
Python 311 Found

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
1. Download and unpack to the same Directory as the `requirements.txt`.
2. Edit this line `set "PYTHON_VERSION_NODECIMAL=310"` to have the version relevant to the program the `requirements.txt` relates to (eg. 311 for version 3.11).
3. Run `Setup-Install.Bat`, and take a look at the output, it will show if there are any issues, but regardless of issues, just ignore the `Verifying installation...` section for now, and try running the Program you were installing requirements for.
4. If there are problems running the program that  `requirements.txt` relates to you should definately run `Setup-Install` again, and ensure to check the `Verifying installation...` section, and determine if any of those dependencies are required for the application to work, mainly involves going up and down the lists, and typing a few, `"drive:\path\pip.exe" uninstall packagename` and `"drive:\path\pip.exe" install packagename==#.##`, types of commands.
- Ensure you ignore any dependency compatibility issues, if they are not for the SPECIFIC VERSION of the SPECIFIC, PROGRAMS AND LIBRARIES, that you are using.  

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
