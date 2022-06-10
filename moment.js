const moment = require('moment');

// const now = moment();
// // console.log(`${now.year}-${now.month}-${now.day}`);
// console.log(now.format('YYYY-MM-DD 01:00:00'));

const source = '2022-04-01T00:00:00.000Z';

const time = moment(source.split('T')[0]).format('YYYY-MM-DD')
console.log(time);