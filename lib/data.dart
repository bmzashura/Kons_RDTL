class ListArtigu {
  String parte,
      titulu,
      kapitulu,
      artigu,
      subtitulu,
      paragraf;

bool fav;

  
  ListArtigu(
      this.parte, this.titulu, this.kapitulu, this.artigu,this.subtitulu, this.paragraf,this.fav);
}


final List<ListArtigu>lArtigu = [
  ListArtigu('PARTE I','', '', 'Artigo 1', 'A República', '1. A República Democrática de Timor-Leste é um Estado de direito democrático,soberano, independente e unitário, baseado na vontade popular e no respeito pela dignidade da pessoa humana.\n2. O dia 28 de Novembro de 1975 é o dia da Proclamação da Independência da República Democrática de Timor-Leste.',true),
  ListArtigu('PARTE I','', '', 'Artigo 2', 'Soberania e constitucionalidade', '1. A soberania reside no povo, que a exerce nos termos da Constituição.\n2. O Estado subordina-se à Constituição e às leis.\n3. As leis e os demais actos do Estado e do poder local só são válidos se forem conformes com a Constituição.\n4. O Estado reconhece e valoriza as normas e os usos costumeiros de Timor-Leste que não contrariem a Constituição e a legislação que trate especialmente do direito costumeiro.',true),
  ListArtigu('PARTE I','', '', 'Artigo 3', 'Cidadania', '1. Na República Democrática de Timor-Leste existe cidadania originária e cidadania adquirida.\n2. São cidadãos originários de Timor-Leste, desde que tenham nascido em território nacional:\n a) Os filhos de pai ou mãe nascidos em Timor-Leste; \nb) Os filhos de pais incógnitos, apátridas ou de nacionalidade desconhecida;\nc) Os filhos de pai ou mãe estrangeiros que, sendo maiores de dezassete anos,declarem, por si, querer ser timorenses.\n3. São cidadãos originários de Timor-Leste, ainda que nascidos em território estrangeiro, os filhos de pai ou mãe timorenses.\4. A aquisição, perda e reaquisição de cidadania, bem como o seu registo e prova, são regulados por lei.', true),
  ListArtigu('PARTE I','', '', 'Artigo 4', 'Território', '1. O território da República Democrática de Timor-Leste compreende a superfície terrestre, a zona marítima e o espaço aéreo delimitados pelas fronteiras nacionais,que historicamente integram a parte oriental da ilha de Timor, o enclave de Oe-Cusse Ambeno, a ilha de Ataúro e o ilhéu de Jaco. \n2. A lei fixa e define a extensão e o limite das águas territoriais, a zona económica exclusiva e os direitos de Timor-Leste na zona contígua e plataforma continental.\n3. O Estado não aliena qualquer parte do território timorense ou dos direitos de soberania que sobre ele exerce, sem prejuízo da rectificação de fronteiras.', true),
];
