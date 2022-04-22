function delay(n){
    return new Promise(function(resolve){
        setTimeout(resolve,n*1000);
    });
}

async function test(val){
    console.log(`${val} - start`);
    await delay(2);
    console.log(`${val} - end`);
    return true;
}

async function promiseAll(){
    const arr = ['qwer', 'asdf', 'xzcv', '1234', '5678', '90-='];
    console.time('promise.all array set');
    const arrP = Array.from(arr, x => test(x)); 
    console.timeEnd('promise.all array set');

    console.time('promise.all');
    await Promise.all(arrP);
    console.timeEnd('promise.all');
}
async function promise(){
    console.time('promise');
    await test('1');
    await test('2');
    await test('3');
    await test('4');
    await test('5');
    console.timeEnd('promise');
}

promise();
promiseAll();