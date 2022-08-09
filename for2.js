const arr = Array(10000000);

let start = new Date();
for (let i = 0; i < arr.length; i++){
    arr[i] = i - 1;
}
let end = new Date();
console.log(`for time: ${end - start}`);

start = new Date();
for (let a in arr){
    a = a - 1;
}
end = new Date();
console.log(`for in time: ${end - start}`);

start = new Date();
for (let a of arr){
    a = a - 1;
}
end = new Date();
console.log(`for of time: ${end - start}`);

start = new Date();
let i = 0;
while(i < arr.length){
    arr[i] = i - 1;
    i++;
}
end = new Date();
console.log(`while time: ${end - start}`);

start = new Date();
const arr2 = arr.map(a => a - 1);
end = new Date();
console.log(`map time: ${end - start}`);

start = new Date();
const ret = arr.reduce((pre, cur) => pre + cur);
end = new Date();
console.log(`reduce time: ${end - start}`);