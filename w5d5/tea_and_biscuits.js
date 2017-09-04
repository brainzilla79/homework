const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {

  reader.question("Would you like some tea?", function (response) {
    console.log(`You replied, ${response}`);
    reader.question("Would you like some biscuits", function (response2) {
      console.log(`You replied, ${response2}`);
      const firstRes = (response === 'yes') ? 'do' : 'don\'t';
      const secondRes = (response2 === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}
