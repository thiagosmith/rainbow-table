# Rainbow Table
Criação de uma tabela de hashes utilizando uma lista de senhas para posterior pesquisa por meio da criptografia e hash.

## Modo de uso
```
$ wget https://raw.githubusercontent.com/thiagosmith/rainbow-table/refs/heads/main/gera-tabela.sh

$ wget https://raw.githubusercontent.com/thiagosmith/rainbow-table/refs/heads/main/busca-hash.sh

$ wget https://raw.githubusercontent.com/thiagosmith/rainbow-table/refs/heads/main/senhas.txt

$ ls                                                        
busca-hash.sh  gera-tabela.sh  senhas.txt

$ chmod +x *.sh                                             

$ ./gera-tabela.sh                                          
Uso: ./gera-tabela.sh arquivo.txt

$ ./gera-tabela.sh senhas.txt                               
Tabela gerada em tabela.txt

$ cat tabela.txt                                            
MD5    21232f297a57a5a743894a0e4a801fc3 admin
SHA1   d033e22ae348aeb5660fc2140aec35850c4da997 admin
SHA256 8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918 admin
SHA384 9ca694a90285c034432c9550421b7b9dbd5c0f4b6673f05f6dbce58052ba20e4248041956ee8c9a2ec9f10290cdc0782 admin
SHA512 c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec admin

MD5    0192023a7bbd73250516f069df18b500 admin123
SHA1   f865b53623b121fd34ee5426c792e5c33af8c227 admin123
SHA256 240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9 admin123
SHA384 3f75aa9266c066b106318aeb0301226ebba5399d4da3c9e5264e2f7b2f06ecc16653de49816b7f767b41dd138336f613 admin123
SHA512 7fcf4ba391c48784edde599889d6e3f1e47a27db36ecc050cc92f259bfac38afad2c68a1ae804d77075e8fb722503f3eca2b2c1006ee6f6c7b7628cb45fffd1d admin123

MD5    0cef1fb10f60529028a71f58e54ed07b Password1!
SHA1   32ca9fc1a0f5b6330e3f4c8c1bbecde9bedb9573 Password1!
SHA256 1d707811988069ca760826861d6d63a10e8c3b7f171c4441a6472ea58c11711b Password1!
SHA384 a59ef52de24cfc0ebe6fdd83a26ad7884c99d4c95331468ff4ddfe0d1a3209d1c948d1f1d4104ba19cd04af80889f63e Password1!
SHA512 ecb3548b49fefa9c984ec134fa362b3316ec8cc4c044b3a71444eed538ecc39461fe5d4dd1d71287fcd2b1c3354cc36873956b3e15229b5acbdacda276babed1 Password1!

MD5    25f9e794323b453885f5181f1b624d0b 123456789
SHA1   f7c3bc1d808e04732adf679965ccc34ca7ae3441 123456789
SHA256 15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225 123456789
SHA384 eb455d56d2c1a69de64e832011f3393d45f3fa31d6842f21af92d2fe469c499da5e3179847334a18479c8d1dedea1be3 123456789
SHA512 d9e6762dd1c8eaf6d61b3c6192fc408d4d6d5f1176d0c29169bc24e71c3f274ad27fcd5811b313d681f7e55ec02d73d499c95455b6b5bb503acf574fba8ffe85 123456789

MD5    5f4dcc3b5aa765d61d8327deb882cf99 password
SHA1   5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8 password
SHA256 5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8 password
SHA384 a8b64babd0aca91a59bdbb7761b421d4f2bb38280d3a75ba0f21f2bebc45583d446c598660c94ce680c47d19c30783a7 password
SHA512 b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86 password

$ ./busca-hash.sh                                           
Digite o tipo de hash (MD5, SHA1, SHA256, SHA384, SHA512):
SHA256 
Digite o hash:
5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8
Senha encontrada: password
```
