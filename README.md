# Composer docs em PT-BR @ codamos.com.br

## Baixar arquivos mais atuais

```
$ bin/pull-latest-docs.sh
```

## Gerar novo arquivo md5.txt

```
$ bin/get-md5-hashes.sh md5.new.txt
```

Após gerar o novo arquivo contendo os hashes MD5, fazer um `diff`
do arquivo antigo e o novo. Desta forma é possível ver quais
traduções estão desatualizadas.

```
$ diff md5.txt md5.new.txt
```

## Ambiente de desenvolvimento

```
$ mdbook serve --open
```

## Como compilar o livro

```
$ mdbook build
```

