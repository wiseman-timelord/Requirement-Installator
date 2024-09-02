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

Admin Status: Administrator
Working Folder: D:\ProgsCreations\NConvertBatch
Python 310 found.
Using `python.exe` from: C:\Program Files\Python310\\python.exe
Using `pip.exe` from: C:\Program Files\Python310\\Scripts\pip.exe

Ensuring setuptools and wheel are properly installed...
Collecting setuptools
  Downloading setuptools-74.0.0-py3-none-any.whl.metadata (6.7 kB)
Collecting wheel
  Downloading wheel-0.44.0-py3-none-any.whl.metadata (2.3 kB)
Downloading setuptools-74.0.0-py3-none-any.whl (1.3 MB)
   ---------------------------------------- 1.3/1.3 MB 337.6 kB/s eta 0:00:00
Downloading wheel-0.44.0-py3-none-any.whl (67 kB)
Installing collected packages: wheel, setuptools
  Attempting uninstall: wheel
    Found existing installation: wheel 0.44.0
    Uninstalling wheel-0.44.0:
      Successfully uninstalled wheel-0.44.0
  Attempting uninstall: setuptools
    Found existing installation: setuptools 69.5.1
    Uninstalling setuptools-69.5.1:
      Successfully uninstalled setuptools-69.5.1

Installing Requirements...
Requirement already satisfied: gradio in c:\program files\python310\lib\site-packages (from -r requirements.txt (line 1)) (3.41.2)
Requirement already satisfied: aiofiles<24.0,>=22.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (23.2.1)
Requirement already satisfied: altair<6.0,>=4.2.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (5.3.0)
Requirement already satisfied: fastapi in c:\users\mastar\appdata\roaming\python\python310\site-packages (from gradio->-r requirements.txt (line 1)) (0.94.0)
Requirement already satisfied: ffmpy in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.4.0)
Requirement already satisfied: gradio-client==0.5.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.5.0)
Requirement already satisfied: httpx in c:\users\mastar\appdata\roaming\python\python310\site-packages (from gradio->-r requirements.txt (line 1)) (0.24.1)
Requirement already satisfied: huggingface-hub>=0.14.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.24.5)
Requirement already satisfied: importlib-resources<7.0,>=1.3 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (6.4.0)
Requirement already satisfied: jinja2<4.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (3.1.4)
Requirement already satisfied: markupsafe~=2.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (2.1.5)
Requirement already satisfied: matplotlib~=3.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (3.9.1.post1)
Requirement already satisfied: numpy~=1.0 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from gradio->-r requirements.txt (line 1)) (1.26.2)
Requirement already satisfied: orjson~=3.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (3.10.7)
Requirement already satisfied: packaging in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (24.1)
Requirement already satisfied: pandas<3.0,>=1.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (1.5.3)
Requirement already satisfied: pillow<11.0,>=8.0 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from gradio->-r requirements.txt (line 1)) (9.5.0)
Requirement already satisfied: pydantic!=1.8,!=1.8.1,!=2.0.0,!=2.0.1,<3.0.0,>=1.7.4 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from gradio->-r requirements.txt (line 1)) (1.10.17)
Requirement already satisfied: pydub in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.25.1)
Requirement already satisfied: python-multipart in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.0.9)
Requirement already satisfied: pyyaml<7.0,>=5.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (5.4.1)
Requirement already satisfied: requests~=2.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (2.28.2)
Requirement already satisfied: semantic-version~=2.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (2.10.0)
Requirement already satisfied: typing-extensions~=4.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (4.12.2)
Requirement already satisfied: uvicorn>=0.14.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (0.30.5)
Requirement already satisfied: websockets<12.0,>=10.0 in c:\program files\python310\lib\site-packages (from gradio->-r requirements.txt (line 1)) (11.0.3)
Requirement already satisfied: fsspec in c:\program files\python310\lib\site-packages (from gradio-client==0.5.0->gradio->-r requirements.txt (line 1)) (2024.6.1)
Requirement already satisfied: jsonschema>=3.0 in c:\program files\python310\lib\site-packages (from altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (4.23.0)
Requirement already satisfied: toolz in c:\program files\python310\lib\site-packages (from altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (0.12.1)
Requirement already satisfied: filelock in c:\program files\python310\lib\site-packages (from huggingface-hub>=0.14.0->gradio->-r requirements.txt (line 1)) (3.15.4)
Requirement already satisfied: tqdm>=4.42.1 in c:\program files\python310\lib\site-packages (from huggingface-hub>=0.14.0->gradio->-r requirements.txt (line 1)) (4.66.5)
Requirement already satisfied: contourpy>=1.0.1 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (1.2.1)
Requirement already satisfied: cycler>=0.10 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (0.12.1)
Requirement already satisfied: fonttools>=4.22.0 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (4.53.1)
Requirement already satisfied: kiwisolver>=1.3.1 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (1.4.5)
Requirement already satisfied: pyparsing>=2.3.1 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (3.1.2)
Requirement already satisfied: python-dateutil>=2.7 in c:\program files\python310\lib\site-packages (from matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (2.8.2)
Requirement already satisfied: pytz>=2020.1 in c:\program files\python310\lib\site-packages (from pandas<3.0,>=1.0->gradio->-r requirements.txt (line 1)) (2024.1)
Requirement already satisfied: charset-normalizer<4,>=2 in c:\program files\python310\lib\site-packages (from requests~=2.0->gradio->-r requirements.txt (line 1)) (3.2.0)
Requirement already satisfied: idna<4,>=2.5 in c:\program files\python310\lib\site-packages (from requests~=2.0->gradio->-r requirements.txt (line 1)) (2.10)
Requirement already satisfied: urllib3<1.27,>=1.21.1 in c:\program files\python310\lib\site-packages (from requests~=2.0->gradio->-r requirements.txt (line 1)) (1.26.19)
Requirement already satisfied: certifi>=2017.4.17 in c:\program files\python310\lib\site-packages (from requests~=2.0->gradio->-r requirements.txt (line 1)) (2024.7.4)
Requirement already satisfied: click>=7.0 in c:\program files\python310\lib\site-packages (from uvicorn>=0.14.0->gradio->-r requirements.txt (line 1)) (8.1.7)
Requirement already satisfied: h11>=0.8 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from uvicorn>=0.14.0->gradio->-r requirements.txt (line 1)) (0.12.0)
Requirement already satisfied: starlette<0.27.0,>=0.26.0 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from fastapi->gradio->-r requirements.txt (line 1)) (0.26.1)
Requirement already satisfied: httpcore<0.18.0,>=0.15.0 in c:\users\mastar\appdata\roaming\python\python310\site-packages (from httpx->gradio->-r requirements.txt (line 1)) (0.15.0)
Requirement already satisfied: sniffio in c:\program files\python310\lib\site-packages (from httpx->gradio->-r requirements.txt (line 1)) (1.3.1)
Requirement already satisfied: colorama in c:\program files\python310\lib\site-packages (from click>=7.0->uvicorn>=0.14.0->gradio->-r requirements.txt (line 1)) (0.4.6)
Requirement already satisfied: anyio==3.* in c:\users\mastar\appdata\roaming\python\python310\site-packages (from httpcore<0.18.0,>=0.15.0->httpx->gradio->-r requirements.txt (line 1)) (3.7.1)
Requirement already satisfied: exceptiongroup in c:\program files\python310\lib\site-packages (from anyio==3.*->httpcore<0.18.0,>=0.15.0->httpx->gradio->-r requirements.txt (line 1)) (1.2.2)
Requirement already satisfied: attrs>=22.2.0 in c:\program files\python310\lib\site-packages (from jsonschema>=3.0->altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (24.2.0)
Requirement already satisfied: jsonschema-specifications>=2023.03.6 in c:\program files\python310\lib\site-packages (from jsonschema>=3.0->altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (2023.12.1)
Requirement already satisfied: referencing>=0.28.4 in c:\program files\python310\lib\site-packages (from jsonschema>=3.0->altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (0.35.1)
Requirement already satisfied: rpds-py>=0.7.1 in c:\program files\python310\lib\site-packages (from jsonschema>=3.0->altair<6.0,>=4.2.0->gradio->-r requirements.txt (line 1)) (0.20.0)
Requirement already satisfied: six>=1.5 in c:\program files\python310\lib\site-packages (from python-dateutil>=2.7->matplotlib~=3.0->gradio->-r requirements.txt (line 1)) (1.16.0)
Processed: `requirements.txt`

Verifying installation...
accelerate 0.21.0 requires torch, which is not installed.
clip 1.0 requires torch, which is not installed.
clip 1.0 requires torchvision, which is not installed.
controlnet-aux 0.0.9 requires torch, which is not installed.
controlnet-aux 0.0.9 requires torchvision, which is not installed.
depth-anything 2024.1.22.0 requires torch, which is not installed.
depth-anything 2024.1.22.0 requires torchvision, which is not installed.
depth-anything-v2 2024.7.1.0 requires torch, which is not installed.
depth-anything-v2 2024.7.1.0 requires torchvision, which is not installed.
dsine 2024.3.23 requires torch, which is not installed.
dsine 2024.3.23 requires torchvision, which is not installed.
geffnet 1.0.2 requires torch, which is not installed.
geffnet 1.0.2 requires torchvision, which is not installed.
kornia 0.6.7 requires torch, which is not installed.
open-clip-torch 2.20.0 requires torch, which is not installed.
open-clip-torch 2.20.0 requires torchvision, which is not installed.
pytorch-lightning 1.9.4 requires torch, which is not installed.
spandrel 0.3.4 requires torch, which is not installed.
spandrel 0.3.4 requires torchvision, which is not installed.
spandrel-extra-arches 0.1.1 requires torch, which is not installed.
spandrel-extra-arches 0.1.1 requires torchvision, which is not installed.
timm 0.9.5 requires torch, which is not installed.
timm 0.9.5 requires torchvision, which is not installed.
torchdiffeq 0.2.3 requires torch, which is not installed.
clean-fid 0.1.35 requires torch, which is not installed.
clean-fid 0.1.35 requires torchvision, which is not installed.
facexlib 0.3.0 requires torch, which is not installed.
facexlib 0.3.0 requires torchvision, which is not installed.
invisible-watermark 0.2.0 requires torch, which is not installed.
olive-ai 0.6.2 requires torch, which is not installed.
optimum 1.21.3 requires torch, which is not installed.
stable-diffusion 0.0.1 requires torch, which is not installed.
test-tube 0.7.5 requires torch, which is not installed.
tomesd 0.1.3 requires torch, which is not installed.
torchmetrics 1.4.1 requires torch, which is not installed.
torchsde 0.2.6 requires torch, which is not installed.
controlnet-aux 0.0.9 has requirement timm<=0.6.7, but you have timm 0.9.5.
mediapipe 0.10.14 has requirement protobuf<5,>=4.25.3, but you have protobuf 3.20.0.
Warning: Some conflicts may still exist. Please review the output above.

========================================================================================================================
All processes finished.
Press any key to continue . . .
```

### Install And Use:
1. Download and unpack to the same Directory as the `requirements.txt`.
2. Edit this line `set "PYTHON_VERSION_NODECIMAL=310"` to have the version relevant to the program the `requirements.txt` relates to (eg. 311 for version 3.11).
3. Run `Setup-Install.Bat`, and take a look at the output, it will show if there are any issues, but regardless of issues, just ignore the `Verifying installation...` section for now, and try running the Program you were installing requirements for.
4. If there are problems running the program that  `requirements.txt` relates to you should definately run `Setup-Install` again, and ensure to check the `Verifying installation...` section, and determine if any of those dependencies are required for the application to work, mainly involves going up and down the lists, and typing a few, `"drive:\path\pip.exe" uninstall packagename` and `"drive:\path\pip.exe" install packagename==#.##`, types of commands.
- Ensure you ignore any dependency compatibility issues, if they are not for the SPECIFIC VERSION of the SPECIFIC, PROGRAMS AND LIBRARIES, that you are using.  
