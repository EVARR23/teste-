const xlsx = require('xlsx');

const filePath = process.argv.slice(2)[0];
const workbook = xlsx.readFile(filePath);
const worksheet = workbook.Sheets[workbook.SheetNames[0]];

const data = xlsx.utils.sheet_to_json(worksheet, {
    header: "A",
    range: 9
});

data.map(aa => {
    console.log(aa);
});