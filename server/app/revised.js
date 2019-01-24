let allAlcohols = [
    {
        name: "Patron Anejo Tequila",
        abv: 40,
        sd: 1,
        category: "shots"
    },
    {
        name: "Grey Goose Vodka",
        abv: 40,
        sd: 1,
        category: "shots"
    },
    {
        name: "Jameson Irish Whiskey",
        abv: 40,
        sd: 1,
        category: "shots"
    },
    {
        name: "Bacardi Gold Rum",
        abv: 40,
        sd: 1,
        category: "shots"
    },
    {
    name: "Jim Beam Kentuckty Straight Bourbon Whiskey",
    abv: 40,
    sd: 1,
    category: "shots"
    },
    {
        name: "Fernet-Branca",
        abv: 39,
        sd: 1,
        category: "shots"
    },
    {
        name: "Jägermeister",
        abv: 35,
        sd: 1,
        category: "shots"
    },
    {
    name: "Fireball Whisky",
    abv: 33,
    sd: 1,
    category: "shots"
    },
    {
        name: "Lemon Drop",
        abv: 15,
        sd: 1,
        category:"shots"
    },
    {
        name: "Captain Morgan Original Spiced Rum",
        abv: 35,
        sd: 1,
        category: "shots"
    },
    {
        name: "Mojito",
        abv: 6.3,
        sd: 2,
        category:"mixed"
    },
    {
        name: "Moscow mule",
        abv: 11,
        sd: 3,
        category:"mixed"
    },
    {
        name: "Tom Collins",
        abv: 5,
        sd: 1,
        category: "mixed"
    },
    {
        name: "Margarita",
        abv: 10,
        sd: 3,
        category: "mixed"
    },
    {
        name: "Cosmopolitan",
        abv: 10,
        sd: 3,
        category: "mixed"
    },
    {
        name: "Captain Morgan - Long Island Iced Tea",
        abv: 17,
        sd: 5,
        category: "mixed"
    },
    {
        name: "Whiskey Sour",
        abv: 15,
        sd: 4,
        category: "mixed"
    },
    {
        name: "Martini",
        abv: 15,
        sd: 4,
        category: "mixed"
    },
    {
        name: "Mai Tai",
        abv: 12.5,
        sd: 4,
        category: "mixed"
    },
    {
        name: "Bloody Mary",
        abv: 8,
        sd: 2,
        category: "mixed"
    },
    {
        name: "Heineken",
        abv: 5,
        sd: 1,
        category: "beer"
    },
    {
        name: "Stella Artois",
        abv: 5.2,
        sd: 1,
        category: "beer"
    },
    {
        name: "Corona",
        abv: 4,
        sd: 1,
        category: "beer"
    },
    {
        name: "Guinness",
        abv: 5,
        sd: 1,
        category: "beer"
    },
    {
        name: "Blue Moon Full Moon Winter Ale",
        abv: 5.52,
        sd:1,
        category: "beer"
    },
    {
        name: "Budweiser",
        abv: 5,
        sd:1,
        category: "beer"
    },
    {
    name: "Bud Light",
    abv: 5,
    sd: 1,
    category: "beer"
},
{
    name: "Modelo",
    abv: 4.4,
    sd:1,
    category: "beer"
},
{
    name: "Coney Island Mermaid Pilsner",
    abv: 5,
    sd: 1,
    category: "beer"
},
{
    name: "Shock Top",
    abv: 5,
    sd: 1,
    category: "beer"
},

{
    name: "Pinot Grigio",
    abv: 12.5,
    sd: 1,
    category: "wine"
},

{
    name: "Sauvignon Blanc",
    abv: 13,
    sd: 1,
    category: "wine"
},
{
    name: "Chardonnay",
    abv:  13,
    sd: 1,
    category: "wine"
},


{
    name: "Pinot Noir",
    abv: 1,
    sd: 1,
    category: "wine"
},
{
    name: "White Zinfandel",
    abv: 12.5,
    sd: 1,
    category: "wine"
},
{
    name: "Cabernet Sauvignon",
    abv: 10.5,
    sd: 1,
    category: "wine"
},
{
    name: "Syrah",
    abv: 12,
    sd: 1,
    category: "wine"
},
{
    name: "Riesling",
    abv: 12,
    sd: 1,
    category: "wine"
},

];

Array.from(document.querySelectorAll("[name='purealcoholperserving'] option"))
    .map(option => option.innerText)
    .map(text => text.split("/").map(str => str.trim()))
    .map(arr => {
        let [name, abvString = null, servingOzString = null] = arr;
        const abv = abvString === null ? null : parseFloat(abvString.replace("% ABV"))
        const oz = servingOzString === null ? null : parseInt(servingOzString.replace("oz serving"))
        return { name, abv, oz }
    })
    .map(obj => `Drink.create(name: "${obj.name}", abv_percentage: ${obj.abv || "nil"}, serving_ounces: ${obj.oz || "nil"})`)
    .join("\r\n")