var next = '/api/Data/';
var start = +new Date();
async function fetchDataJSON() {
    while (next) {
        const response = await fetch(next);
        data = await response.json();
        next = data.next;
        console.log(data.next)
    }
    texto = 'Tardó ' + (new Date() - start) + 'ms'
    $("#graficando").html(texto);
    return data;
}

fetchDataJSON().then(data => {
    data;
});


// for (j = 0; j < 4; j++) {
//     fetch(next)
//         .then((resp) => resp.json())
//         .then(function (data) {
//             console.log("Nuevo " + j)
//             console.log(j + " " + data.next);
//             next = data.next;
//         });
// }



// función que implementa un wait con promesas
// const wait = ms => new Promise((r, j) => setTimeout(r, ms))

// var next;
// // función que emula un proceso asíncrono
// const fetchUrl = async url => {
//     // await wait(1000)
//     fetch(url)
//         .then((resp) => resp.json())
//         .then(function (data) {
//             console.log(data.next);
//             next = data.next;
//         });
//     return next
// }

// // aquí vamos a hacer ver que pedimos 3 webs, y lo hacemos con un loop for .. of
// const fetching = async () => {
//     const urls = ['/api/Data/']
//     for (const url of urls) {

//         const data = await fetchUrl(url)
//         console.log(data)
//         console.log(urls)
//         urls.push(data);
//     }
// }

// fetching()