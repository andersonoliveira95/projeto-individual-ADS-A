


var esferas = [];

function encontrar() {
    fazerDesejo.style.display = "none";
    local_1.style.display = "block";
}


function validar_esferas() {
    if (esferas.length == 7) {
        alert("você conseguiu encontrar todas as esferas, agora ja pode fazer o seu desejo!");
        window.location.href = "publicacoes.html";
    }
}


function guardar_1() {

    if (esferas.indexOf('1_estrela') < 0) {
        alert("Você encontrou a esfera de 1 estrela, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('1_estrela');
    } else {
        alert("você ja possui a esfera de 1 estrela")
    }

    validar_esferas()
}

function guardar_2() {

    if (esferas.indexOf('2_estrela') < 0) {
        alert("Você encontrou a esfera de 2 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('2_estrela');
    } else {
        alert("você ja possui a esfera de 2 estrelas")
    }

    validar_esferas()
}

function guardar_3() {

    if (esferas.indexOf('3_estrela') < 0) {
        alert("Você encontrou a esfera de 3 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('3_estrela');
    } else {
        alert("você ja possui a esfera de 3 estrelas")
    }

    validar_esferas()
}

function guardar_4() {

    if (esferas.indexOf('4_estrela') < 0) {
        alert("Você encontrou a esfera de 4 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('4_estrela');
    } else {
        alert("você ja possui a esfera de 4 estrelas")
    }

    validar_esferas()
}

function guardar_5() {

    if (esferas.indexOf('5_estrela') < 0) {
        alert("Você encontrou a esfera de 5 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('5_estrela');

    } else {
        alert("você ja possui a esfera de 5 estrelas")
    }
    
    validar_esferas()
}

function guardar_6() {

    if (esferas.indexOf('6_estrela') < 0) {
        alert("Você encontrou a esfera de 6 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('6_estrela');

    } else {
        alert("você ja possui a esfera de 6 estrelas")
    }

    validar_esferas()
}

function guardar_7() {

    if (esferas.indexOf('7_estrela') < 0) {
        alert("Você encontrou a esfera de 7 estrelas, continue reunindo as esferas e podera invocar Sheilong");
        esferas.push('7_estrela');

    } else {
        alert("você ja possui a esfera de 7 estrelas")
    }

    validar_esferas()
}

// botoes de voltar e proseguir 

var contador = 0;

function voltar() {
    if (contador == 1) {
        local_2.style.display = "none";
        local_1.style.display = "block";
        contador--;

    } else if (contador == 2) {
        local_3.style.display = "none";
        local_2.style.display = "block";
        contador--;

    } else if (contador == 3) {
        local_4.style.display = "none";
        local_3.style.display = "block";
        contador--;

    } else if (contador == 4) {
        local_5.style.display = "none";
        local_4.style.display = "block";
        contador--;

    } else if (contador == 5) {
        local_6.style.display = "none";
        local_5.style.display = "block";
        contador--;
    } else if (contador == 6) {
        local_7.style.display = "none";
        local_6.style.display = "block";
        contador--;
    }
}

function proximo() {
    if (contador == 0) {
        local_1.style.display = "none";
        local_2.style.display = "block";
        contador++;

    } else if (contador == 1) {
        local_2.style.display = "none";
        local_3.style.display = "block";
        contador++;

    } else if (contador == 2) {
        local_3.style.display = "none";
        local_4.style.display = "block";
        contador++;

    } else if (contador == 3) {
        local_4.style.display = "none";
        local_5.style.display = "block";
        contador++;

    } else if (contador == 4) {
        local_5.style.display = "none";
        local_6.style.display = "block";
        contador++;

    } else if (contador == 5) {
        local_6.style.display = "none";
        local_7.style.display = "block";
        contador++;
    }
}



