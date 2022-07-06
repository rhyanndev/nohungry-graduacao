function alterarImagem(imagem, caminhoNovaImagem, nome, novoNome, desc, novaDesc){
	console.log(caminhoNovaImagem)
		document.getElementById(imagem).src = document.getElementById(caminhoNovaImagem).innerText;
		document.getElementById(nome).innerHTML = document.getElementById(novoNome).innerText;
		document.getElementById(desc).innerHTML = document.getElementById(novaDesc).attributes;
		console.log();
}	