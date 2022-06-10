const regExp = new RegExp('^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
const email = 'lwh12@wgslabs.com'
console.log(regExp.test(email))