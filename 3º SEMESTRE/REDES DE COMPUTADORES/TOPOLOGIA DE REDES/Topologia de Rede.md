# Topologia de Rede

- A topologia refere-se a forma como os elementos de uma rede de comunicação estão organizados. Ela pode ser física (o layout real dos cabos e dispositivos) ou lógica (como os dados trafegam na rede). As topologias de rede ajudam a trazer mais organização, performance e usabilidade, qualidades cada vez mais necessárias ao implementar uma rede de computadores.

# O que é Topologia de Rede?

- É um termo utilizado para definir a forma de estruturação de uma rede de computadores. Ela é necessária quando há uma rede de computadores conectados em uma mesma rede.
- Essa conexão possibilita mais segurança, compartilhamento de arquivos com facilidade, além de agilizar a comunicação.
- O conceito é interessante porque determina a forma como as máquinas vão se conectar entre si, considerando os hubs e switches. Muitas vezes, o conceito não é levado em consideração, o que traz uma série de problemas de sincronização de dados e erros na comunicação.
- A forma como as máquinas estão conectadas em uma mesma rede interfere não só nos aspectos citados, mas também na estabilidade da conexão. Portanto, a área de TI deve se atentar bastante aos aspectos da topologia de rede.

## Topologia de Rede física e lógica

A topologia de rede é dividida em sete tipos, mas antes de entender essa divisão, é preciso entender sobre a representação, que pode ser feita de duas maneiras:

### 1. Física

A topologia de rede física diz respeito aos elementos físicos que compõem a conexão de rede. Ou seja, fala sobre a disposição de cabos e dispositivos conectados. Ao falar sobre a forma física, estamos nos referindo às estratégias de organização físicas, levando em conta a disposição das máquinas no espaço físico, bem como a conexão de cabos.

### 2. Lógica

Já a representação lógica diz respeito à forma como a rede trabalha. Ou seja, aqui entendemos e aprimoramos a interface, softwares, entre outros quesitos.

O objetivo da topologia de rede lógica é conectar os nodes da rede, para trazer uma usabilidade ainda mais eficiente, ágil e intuitiva.

# Tipos de Topologia de Rede - Vantagens e desvantagens de cada

Quando falamos em tipos de topologia de rede, não existe uma estratégia perfeita. Todas elas apresentam vantagens e desvantagens, que estão relacionadas aos custos de implementação, manutenção e estabilidade.

Os tipos mais estáveis costumam ter valores mais elevados, enquanto há tipos mais simples e acessíveis, que acabam sendo mais vulneráveis. O tipo de topologia escolhido vai influenciar diretamente no valor, que é dividido entre custo de cabos, hubs, switches e toda a estrutura necessária para implementar a solução.

Entenda mais sobre cada um dos tipos:

## Anel

A topologia anel é realizada de forma circular. Isso significa que cada uma das máquinas possui duas máquinas vizinhas, pelas quais é realizada a transmissão de dados. Ou seja, é um círculo de dispositivos conectados, com fluxo de dados unidirecional e repasse por cada nó até chegar ao seu destino.

Esse tipo de topologia é bem eficiente para transmissão de dados sem erros, tem grande confiabilidade e pode ser implementada em grandes redes. Contudo, a falha de um único dispositivo pode prejudicar a estabilidade da rede inteira, o que aumenta os riscos de delay.

- Os dispositivos formam um círculo fechado, e os dados circulam nesse anel.
- Se um dispositivo falhar, pode afetar a rede toda.
- Ainda usada em algumas redes específicas

## Árvore

Esse tipo de topologia recebe esse nome pois a sua disposição lembra os galhos de uma árvore, seguindo uma hierarquia. Essa topologia de rede é feita a partir de um node central, que distribuirá entre os demais dispositivos. Sua principal vantagem é minimizar a vulnerabilidade em comparação com a topologia em anel, além de facilitar a detecção de erros.

Contudo, sua desvantagem é justamente o dispositivo central, que se sofrer alguma falha, todos os demais dispositivos serão afetados.

## Barramento

Um padrão que traz simplicidade e praticidade. Neste tipo, todos os dados circulam por um único cabo. A principal vantagem é que é uma estratégia econômica e versátil, com manutenção simplificada.

Contudo, sua desvantagem é similar ao tipo anel: a rede fica vulnerável diante de falhas de máquinas. Afinal, todas estão centralizadas em um único fluxo.

- Todos os dispositivos compartilham um único cabo principal (barramento).
- Se o cabo principal falhar, a rede toda para.
- Pouco usada hoje em dia, pois tem baixa escalabilidade.

## Estrela

Aqui, temos braços que partem de um ponto central, em formato de estrela. A vantagem é que a falha isolada não compromete o fluxo, visto que ele parte do nó central em direção aos demais dispositivos. Mas, assim como o tipo árvore, em falhas no nó central, haverá prejuízo em todo o fluxo de dados.

- Todos os dispositivos se conectam a um ponto central (switch ou roteador).
- Se um dispositivo falha, a rede continua funcionando.
- Se o ponto central falhar, a rede toda para
- Usada em redes LANs modernas.

## Ponto a ponto

O tipo ponto a ponto é o que garante a maior simplicidade. Os nós todos se conectam entre si. Por conta dessa característica, é o tipo mais comum em instalações residenciais, como por exemplo, PC1 > Modem < PC2.

É ideal para estabelecer a comunicação rápida entre dois dispositivos. Sua desvantagem é que não supre as necessidades de instalações grandiosas.

## Malha

A topologia malha é bastante conhecida pela sua estabilidade. É feita pela conexão de todos os dispositivos entre si, uma excelente solução para operações robustas. Contudo, quanto maior a quantidade de dispositivos, mais expressivos os custos e a complexidade de instalação.

A maior vantagem deste tipo é que a falha individual ou mesmo de algumas unidades de dispositivos não é capaz de derrubar a rede, por isso ela é tão estável.

Sua principal desvantagem é o custo e a complexidade de instalação. É recomendada para operações robustas e é um tipo de topologia de rede que exige um planejamento maior para a implementação.

- Todos os dispositivos têm conexões diretas entre si.
- Oferece alta confiabilidade (se um caminho falhar, há outros).
- Custa caro, pois exige muitos cabos e conexões.

## Híbrida

Assim como o nome já sugere, é um tipo que mescla diferentes tipos de topologia de rede. Pode incluir dois ou mais tipos de padrões e é amplamente utilizado, justamente por fornecer uma solução flexível e personalizável. Sua maior vantagem é a adaptabilidade, de acordo com a quantidade de dispositivos e orçamento disponível.

Já a sua maior desvantagem é a complexidade e assim como o tipo malha, exige um maior planejamento.

- Mistura características de duas ou mais topologias.
- Muito comum em redes modernas, adaptando-se às necessidades da empresa.