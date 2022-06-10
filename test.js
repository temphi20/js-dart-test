const payType = 1, monthPrice = 11.5, minValue = 10000, basicPrice = 330000;
const totalVolume = 4064

let amount = 0;
if (payType == 1) {
    amount = monthPrice;
} else {
    if (minValue == 0) {
        if (totalVolume * monthPrice < basicPrice){
            amount = basicPrice;
        } else {
            amount = totalVolume * monthPrice;
        }
    } else if (totalVolume <= minValue) {
        amount = basicPrice;
    } else {
        amount = basicPrice + ((totalVolume - minValue) * monthPrice);
    }
}
console.log(amount)
console.log(amount%10)
amount = amount - amount % 10;
console.log(amount)
// amount = floor(amount / 10) * 10; //0단위 절사