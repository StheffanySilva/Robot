*** Settings ***

Library     SeleniumLibrary  
Resource  ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite Setup   Open Browser  about:blank  chrome
Suite Teardown  Close Browser


*** Variables ***
${url}=   https://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Cadastro 
   Go to  ${url} 
   Click Element    ${trabalheConosco.btnAccept}
   Click Element    ${trabalheConosco.btnCadastrarCurriculo}
   Switch Window    New
   Input Text       ${trabalheConosco.nome}       ${preencheCampos.nome}
   Input Text       ${trabalheConosco.cargo}      ${preencheCampos.cargo}
   Input Text       ${trabalheConosco.salario}    ${preencheCampos.salario}
   Input Text       ${trabalheConosco.email}      ${preencheCampos.email}
   Input Text       ${trabalheConosco.telefone}   ${preencheCampos.telefone}
   Select From List By Value      ${trabalheConosco.cmbPais}  ${preencheCampos.cmbPais}
   Input Text       ${trabalheConosco.estado}     ${preencheCampos.estado}
   Input Text       ${trabalheConosco.cidade}     ${preencheCampos.cidade}
   Input Text       ${trabalheConosco.bairro}     ${preencheCampos.bairro}
   Input Text       ${trabalheConosco.endeceo}    ${preencheCampos.endereco}
   Input Text       ${trabalheConosco.cep}        ${preencheCampos.cep}
   Input Text       ${trabalheConosco.resumo}     ${preencheCampos.cep}
   Choose File      ${trabalheConosco.curriculo}  ${EXECDIR}/Curriculo teste.docx
   Wait Until Page Contains  Curriculo teste.docx  30
   Scroll ElementInto View      ${trabalheConosco.btnFinalizar}
   Click Element                ${trabalheConosco.btnFinalizar}
   Wait Until Element Contains  ${trabalheConosco.sucesso}  ${preencheCampos.sucesso}  30

