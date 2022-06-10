const arr = ['영', '일', '이'];
const map = {
    '00': '영',
    '01': '일',
    '02': '이'
};
const json = JSON.parse(JSON.stringify(map));

function forIndex(iterable){
    for (let i = 0; i < iterable.length; i++){
        console.log(`[${i}] ${iterable[i]}`);
    }
}

function forIn(iterable){
    try {
        const _iterable = iterable.map(x => );
        for (let el in iterable){
            console.log(`${el}`);
        }
    }catch(e){}
}

function forOf(iterable){
    try {
        for (let el of iterable){
            console.log(`${el}`);
        }
    }catch(e){}
}

console.log('--- array');
forIndex(arr);
forIn(arr);
forOf(arr);

console.log('--- map');
forIndex(map);
forIn(map);
forOf(map);

console.log('--- json');
forIndex(json);
forIn(json);
forOf(json);