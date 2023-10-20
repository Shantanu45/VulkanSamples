@ECHO OFF

SET glslsPath=%1
SET inputShaderPath=%2
SET outputShaderPath=%~3

for %%f in (%inputShaderPath%\*.frag, %inputShaderPath%\*.vert) do (
    @%glslsPath% "%%~fsf" -o "%outputShaderPath%\%%~nxf.spv"
)
