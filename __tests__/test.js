jest.setTimeout(15000)

const startServer = require('../');
const fs = require('fs')

test('serverStartsAndStops', async () => {
  const mysqld = startServer();

  console.log(process.platform)

  await mysqld.ready
  console.log('mysql.ready')
  await mysqld.stop();
})
