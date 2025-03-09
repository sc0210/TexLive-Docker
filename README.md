# 🚀 Setting Up a Dev Container in VS Code for TeX Live

Using **Dev Containers (`.devcontainer/`)** in VS Code makes it easy to develop inside a Docker container while keeping VS Code fully functional.


## **Why Use Dev Containers?**
- **Automatic Setup**: No need to manually run `docker run` or `docker-compose up`. Just open VS Code, and it **auto-detects** the `.devcontainer/` folder.  
- **Portable & Reproducible**: Ensures that **everyone on your team** gets the same environment, avoiding "works on my machine" issues.  
- **VS Code Integration**: Supports **extensions, settings, and configurations** inside the container.  
- **Folder-Based Workflow**: You can open a project folder in a container directly.



## **Preparation: Folder Structure**
1. **Make sure Docker is running**
   - Run `docker ps` to confirm it's active.

2. **Clone and open the project in VS Code**
   ```sh
   git clone --recurse-submodules https://github.com/sc0210/TexLive-Docker.git

   cd TexLive-Docker
   code .
   ```

   Your project should be structured as follows:

   ```
   📂 my_project/
   │── 📂 .devcontainer/
   │   ├── 📝 Dockerfile
   │   ├── 📝 compose.yml
   │   ├── 📝 devcontainer.json  # (for VSCode Remote-Containers)
   │── 📂 .vscode/
   |   ├── 📝 settings.json # (store LaTex compile recipe)
   |── 📂 Project1
   |   ├── 📄 main.tex 
   |── 📂 CV
   |   ├── 📄 cv.tex
   ```

## **Step: Build container & open in VS Code**
   1. **VS Code will automatically:**  

      - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac).  
      - Type: **"Remote-Containers: Reopen in Container"** and select it.  

   2. **Processes running in backward:**  
      - Detect `.devcontainer/devcontainer.json`  
      - Build the container (if needed)  
      - Attach VS Code to the running container  

## **📝 Compiling LaTeX**

1. **Check before compiling:**
   - Ensure the VS Code extension **LaTeX Workshop (James Yu)** is installed.
   - Check `config/font.tex` settings:

2. **Compile LaTeX:**
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac).
   - Search for **"LaTeX Workshop: Build LaTeX project"** and select it.


---
## **Links**

- [Overleaf Template Links (Official)](https://www.overleaf.com/latex/templates)
- [Taiwan College LaTeX (Dcard)](https://www.dcard.tw/f/graduate_school/p/255290542)


<!--  

## **What Happens When You Open the Folder?**
- **VS Code detects `.devcontainer/devcontainer.json`**  
- It **automatically builds** the container  
- It **mounts your project** into the container  
- You can now **edit, compile, and run LaTeX inside the container**  

---

## **TL;DR – Why Use Dev Containers?**
- **No manual setup** – Just open the folder in VS Code  
- **Portable & Reproducible** – Works on Mac, Linux, Windows  
- **Full VS Code Experience** – With extensions and terminal access  
- **Easy Cleanup** – Just remove `.devcontainer/`, and your system stays clean  

-->
