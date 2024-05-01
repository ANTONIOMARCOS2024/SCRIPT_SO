@echo off
cls
:menu
cls
color 1b

date /t
echo.

echo Computador: %computername%        Usuario: %username%
echo.
                   
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Limpeza de Disco              * 
echo * 2. Buscar erro no windows        *
echo * 3. Atualizar todos os pacotes    *
echo * 4. Sigaa Cps                     *
echo * 5. Diagnostico                   * 
echo * 6. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6

:opcao1
cls
@echo off
echo Iniciando a Limpeza de Disco...

REM Configura as opções de limpeza
cleanmgr /sageset:1

REM Executa a limpeza com as opções configuradas
cleanmgr /sagerun:1

echo Limpeza de Disco concluida.

pause
goto menu

:opcao2
cls
@echo off
echo Verificando arquivos de sistema. Aguarde...
sfc /scannow
echo Verificação e reparo de arquivos de sistema concluidos.

pause
goto menu

:opcao3
cls
@echo off
echo Verificando atualizacoes de programas...
winget upgrade --all
echo Atualizações concluidas.
pause
goto menu

:opcao4
@echo off
echo Abrindo o site desejado...
start  https://siga.cps.sp.gov.br/aluno/login.aspx
echo Site aberto.

goto menu

:opcao5
@echo off
echo Executando diagnostico do sistema...
echo.
echo Verificando arquivos de sistema...
sfc /scannow
echo.
echo Verificando disco...
chkdsk /f
echo.
echo Listando processos em execucao...
tasklist
echo.
echo Verificando status da rede...
ipconfig /all
echo.
echo Diagnostico do sistema concluido.
pause
goto menu

:opcao6

cls
exit