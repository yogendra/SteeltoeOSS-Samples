@ECHO OFF

SET BASEDIR=%~dp0

PUSHD %BASEDIR%

IF NOT EXIST pyenv\NUL GOTO NOENVDIR
ECHO removing existing environment
RMDIR /S /Q pyenv
:NOENVDIR

virtualenv pyenv
CALL pyenv\Scripts\activate
python -m pip install -r pyenv.pkgs --no-cache-dir
CALL pyenv\Scripts\deactivate

POPD
