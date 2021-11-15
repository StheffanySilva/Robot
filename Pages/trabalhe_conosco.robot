*** Variables ***

&{trabalheConosco}
...     btnAccept=//*[contains(text(), "Accep")]
...     btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRÍCULO']
...     nome=//*[@id="name"]
...     cargo=//*[@id="headline"]
...     salario=//*[@id="salary"]
...     email=//*[@id="email"]
...     telefone=//*[@id="phone-0"]
...     cmbPais=//*[@id="country"]
...     estado=//*[@id="region"]
...    cidade=//*[@id="city"]
...    bairro=//*[@id="neighborhood"]
...    endeceo=//*[@id="address"]
...    cep=//*[@id="zipcode"]
...    resumo=//*[@id="summary"]
...    btnAddFormacao=//button[text()='+ Adicionar formação']
...    curriculo=//*[@id="validatedCustomFile"]
...    btnFinalizar=//button[@type='submit']
...     sucesso=//*[text()='com sucesso']

&{preencheCampos}
...    nome=Nome Teste
...    cargo=QA
...    salario=15.000,00
...    email=email@email.com.br
...    telefone=11 9 9999-9999
...    cmbPais=BR
...    estado=SP
...    cidade=São Caetano
...    bairro=Barcelona
...    endereco=Rua da Automação
...    cep=000000000
...    resumo=curriculo enviado com RobotFrameWork, projeto Qa.Coders
...    sucesso=sucesso