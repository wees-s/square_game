Jogo em desenvolvimento apenas por diversão ;)

Você é um quadrado e tem poderes. O seu objetivo é chegar o mais longe possível.

![play](https://github.com/user-attachments/assets/d5ab1960-736e-41c7-8e4d-39a2dd77261f)


• Ainda em desenvolvimento.
• Alguns sprites e funções que estão nesse repositório podem não estar em uso (ainda fazendo testes).

ATUALMENTE:
- 4 Poderes inclusos:
   • Acelerar, Girar, Virar Círculo, Voar.
- 3 Eventos de colisão com o chão(gerado proceduralmente e aleatóriamente):
   • Acelerar, Girar e Voar.
- Espaço infinito gerado no eixo x com background infinito + chão gerado de acordo com o movimento.
- Score contado e impresso na tela.
- Colisão coerente com o personagem e o chão respeitando a física (seja círculo ou quadrado). 
- Menu com salvamento automático do seu record + botão play.
![menu (1)](https://github.com/user-attachments/assets/6de7a89d-3e49-4e9a-a587-b4a4a1a85b5a)

Bugs encontrados:
• Por vezes entra no chão em colisões específicas.
• Há um espaço vazio somente no primeiro chão gerado.
• Os pontos são contados independente da direção que você esteja andando (não deveria contar pontos se você estiver andando para trás).

Bugs corrigidos:
• Corrigido um bug onde a velocidade e o giro não era acumulativo.
• Corrigido um bug onde o quadrado ficava invisível ao trocar de forma.
• Corrigido bug de animações que estavam fora de quadro.
• Corrigido um erro que resetava a pontuação quando o personagem trocava de forma.
• Menu corrigido, agora ao voltar ao menu após o jogo ser interrompido é possível voltar ao jogo novamente.
![final](https://github.com/user-attachments/assets/2a3fbb8f-368d-4b89-a96e-05b0f31249ac)
