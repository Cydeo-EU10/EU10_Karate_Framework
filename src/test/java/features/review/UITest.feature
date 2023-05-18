Feature: UI Test

  Scenario: Google Search
    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe',addOptions: ["--remote-allow-origins=*"] }
    * driver 'https://www.google.com'
    * input("textarea[name='q']","Cydeo")
    * submit().click("input[name='btnK']")
    * match driver.title == "Cydeo - Google'da Ara"
    * print driver.url
