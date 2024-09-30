# Projeto To-Do List - Flutter

Este projeto é um aplicativo simples de lista de tarefas (To-Do List) desenvolvido com Flutter. O aplicativo permite que o usuário adicione, marque como concluída e exclua tarefas, oferecendo uma interface simples e intuitiva.

## Estrutura de Pastas

O projeto está organizado em uma arquitetura de pastas seguindo o padrão comum de projetos Flutter. Cada funcionalidade é agrupada em sua própria pasta para facilitar a organização, manutenção e escalabilidade do código. Abaixo, um resumo das principais pastas e seus propósitos:

- **lib/managers**: Contém os gerenciadores de estado e a lógica de negócios, como o `TaskManager`. Ele gerencia a lista de tarefas e as operações associadas, como adicionar, atualizar e excluir tarefas.

- **lib/models**: Contém os modelos de dados utilizados no aplicativo, como o `Task`, que representa uma tarefa com título, status de conclusão e data de criação.

- **lib/screens**: Contém as telas (ou páginas) do aplicativo. No caso, a `TaskListScreen` é a tela principal onde as tarefas são exibidas e manipuladas.

- **lib/widgets**: Contém os componentes de interface reutilizáveis, como o `TaskItemWidget`, responsável por exibir uma única tarefa com seu título, status de conclusão e botão de exclusão.

## Motivo da Estrutura de Pastas

Essa organização modular permite que o projeto seja escalável e de fácil manutenção. Separar a lógica de negócios, os modelos de dados e a interface facilita a evolução do projeto, seja adicionando novas funcionalidades ou fazendo melhorias.

Além disso, com essa divisão clara, é possível testar cada parte do sistema de forma isolada, o que aumenta a confiabilidade do código e facilita a identificação de bugs.

### Vantagens da Refatoração

Ao refatorar o projeto de forma modular e dividindo responsabilidades entre gerenciadores, modelos e componentes visuais, ganhamos:

- **Facilidade de manutenção**: A lógica de negócios fica separada da interface, tornando mais simples realizar mudanças ou melhorias em apenas uma parte do sistema sem impactar outras.
- **Reutilização de componentes**: Componentes visuais, como o `TaskItemWidget`, podem ser reutilizados em outras partes do projeto ou até em outros projetos, aumentando a eficiência do desenvolvimento.
- **Escalabilidade**: Ao manter a lógica organizada em gerenciadores e modelos, o código está preparado para adicionar novas funcionalidades com menos risco de criar dependências problemáticas.
- **Testabilidade**: Com a lógica de negócios separada da interface, fica mais fácil criar testes automatizados para garantir que o comportamento esperado do aplicativo continue funcionando ao longo do tempo.

## Como Iniciar o Projeto

### Passos para rodar o projeto

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/nerigleston/to-do-list-flutter.git
   ```

2. **Navegue até o diretório do projeto**:

   ```bash
   cd to-do-list-flutter
   ```

3. **Instale as dependências**:

   Certifique-se de que você tenha o Flutter instalado e configurado em sua máquina. Então, instale as dependências do projeto:

   ```bash
   flutter pub get
   ```

4. **Rode o projeto**:

   Com o dispositivo (físico ou emulador) configurado e conectado, rode o aplicativo:

   ```bash
   flutter run
   ```

Agora, o aplicativo estará rodando e você poderá visualizar a lista de tarefas, adicionar novas tarefas, marcá-las como concluídas ou excluí-las.
