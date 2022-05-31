# Introdução

Composer é uma ferramenta para gerenciamento de dependências em PHP. Ela te
permite declarar de quais bibliotecas seu projeto depende e as gerenciará
(fará a instalação e atualização) para você.

## Gerenciamento de dependências

Composer **não é** um gerenciador de pacotes no mesmo sentido em que Yum ou
Apt são. Sim, Composer lida com "pacotes" ou bibliotecas, mas as gerencia
por projeto e as instala num diretório dentro de seu projeto (por exemplo `vendor`).
Por padrão nada é instalado de forma global. Portanto Composer é um gerenciador
de dependências. Porém Composer oferece um projeto "global" para facilitar a sua
vida, através do comando [global](03-linha-de-comando.md#global).

Esta ideia não é novidade e Composer foi fortemente inspirado pelo
[npm](https://www.npmjs.com/) do Node e [bundler](https://bundler.io/) do Ruby.

Vamos supor que:

1. Você possua um projeto que depende de várias bibliotecas.
2. Algumas destas bibliotecas dependem de outras bibliotecas.

Composer:

1. Te permite declarar de quais bibliotecas você depende.
2. Encontra quais versões de quais pacotes podem e precisa ser instaladas, e
as instala (as baixa para o seu projeto).
3. Você pode atualizar todas suas dependências em um único comando.

Veja o capítulo [Utilização básica](01-utilizacao-basica.md) para mais detalhes
sobre como declarar dependências.

## Requisitos de Sistema

A versão mais recente de Composer precisa do PHP 7.2.5 para executar. A versão de
suporte continuado (2.2.x) ainda oferece suporte para PHP 5.3.2+ caso você
ainda utilize a versão legada da linguagem PHP. Algumas configurações do PHP
e flags de compilação também são necessárias, mas ao utilizar o instalador
você receberá avisos sobre quaisquer incompatibilidades.

Para instalar pacotes a partir de código fonte em vez de arquivos zip, você
vai precisar de git, svn, fossil ou hg dependendo de como é feito o
gerenciamento de versões.

Composer é multi-plataforma e nós nos esforçamos para fazer com que execute 
igualmente bem nas plataformas Windows, Linux e macOS.

## Instalação - Linux / Unix / macOS

### Baixando o executável Composer

Composer oferece um instalador bem conveniente que você pode executar diretamente
da linha de comando. Sinta-se livre para
[baixar este arquivo](https://getcomposer.org/installer)
ou revisá-lo no [GitHub](https://github.com/composer/getcomposer.org/blob/main/web/installer)
caso queira saber mais detalhes de como ele funciona internamente. O código está
em PHP puro.

Há duas formas de instalar Composer. De forma local, dentro de seu projeto, ou
com uma instalação global disponível para todo seu sistema.

#### Local

Para instalar Composer de forma local, execute o instalador no diretório de seu
projeto. Visite a [página de Download](https://getcomposer.org/download/) para
obter instruções.

O instalador vai verificar algumas configurações do PHP e baixar o arquivo
`composer.phar` para o seu diretório atual. Este arquivo é o binário de Composer.
É um PHAR (PHP archive), um formato _archive_ para PHP que pode executar na linha
de comando, dentre outras coisas.

Agora execute `php composer.phar` para executar Composer.

Você pode instalar Composer em um diretório específico usando a opção
`--install-dir` e também (re)nomeá-lo utilizando a opção `--filename`.
Quando ao executar o instalador, ao seguir
[as instruções da página de Download](https://getcomposer.org/download/),
adicione os seguintes parâmetros:

```sh
php composer-setup.php --install-dir=bin --filename=composer
```

Agora execute `php bin/composer` para executar o binário Composer.

#### Global

Você pode colocar o arquivo Composer PHAR em qualquer lugar que quiser. Se você
o colocar num diretório incluído em sua variável `PATH`, poderá o acessar de
forma global. Em sistemas Unix você pode até mesmo torná-lo executável e executar 
o comando diretamente sem precisar prefixar com o interpretador `php` na
linha de comando.

Após executaro instalador seguindo
[as instruções da página de Download](https://getcomposer.org/download/)
você pode executar o seguinte comando para mover composer.phar para um diretório
que esteja em sua variável path:

```sh
mv composer.phar /usr/local/bin/composer
```

Caso queira instalar apenas para o seu usuário e evitar a necessidade de permissões
de super usuário (root), você pode usar `~/.local/bin` que é disponibilizado por
padrão em algumas distros Linux.

> **Importante:** Se o comando acima falhar por conta de permissões, você pode
> precisar executar o comando novamente com `sudo`.

> **Importante:** Em algumas versões do macOS o diretório `/usr` não existe. Se
> você receber o erro "/usr/local/bin/composer: No such file or directory" você
> vai precisar criar o diretório manualmente antes de executar o comando:
> `mkdir -p /usr/local/bin`.

> **Importante:** Para obter informações sobre como alterar sua variável PATH,
> leia o [artigo na Wikipedia](https://en.wikipedia.org/wiki/PATH_(variable))
> e/ou utilize seu mecanismo de busca favorito.

Agora execute `composer` para executar Composer em vez de `php composer.phar`.

## Instalação - Windows

### Utilizando o Instalador

Esta é a maneira mais fácil de instalar Composer em seu computador.

Baixe e execute [Composer-Setup.exe](https://getcomposer.org/Composer-Setup.exe).
Isto vai instalar a versão mais recente de Composer e configurar sua variável
PATH para que você possa executar `composer` a partir de qualquer diretório
em sua linha de comando.

> **Importante:** Feche seu terminal. Teste a utilização de Composer com um
> terminal novo: isto é importante porque a variável PATH só é carregada
> quando o terminal é inicializado.

### Instalação Manual

Vá para algum diretório descrito em sua variável PATH e execute o instalador
seguindo [as instruções da página de Download](https://getcomposer.org/download/)
para baixar o arquivo `composer.phar`.

Crie um arquivo `composer.bat` ao lado de `composer.phar`:

Utilizando cmd.exe:

```sh
C:\bin> echo @php "%~dp0composer.phar" %*>composer.bat
```

Utilizando PowerShell:

```sh
PS C:\bin> Set-Content composer.bat '@php "%~dp0composer.phar" %*'
```

Adicione o diretório em sua variável PATH caso ainda não esteja adicionado.
Para informações sobre como alterar sua variável PATH, veja
[este artigo](https://www.computerhope.com/issues/ch000549.htm) e/ou
utilize seu mecanismo de busca favorito.

Feche seu terminal atual. E teste Composer com um novo terminal:

```sh
C:\Users\username>composer -V
Composer version 2.0.12 2021-04-01 10:14:59
```

## Utilizando Composer

Agora que você instalou Composer, você já tem tudo o que precisa para começar
a usar! Vá para o próximo capítulo para uma pequena amostra de como utilizar Composer.

