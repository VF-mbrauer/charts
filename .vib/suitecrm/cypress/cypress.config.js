module.exports = {
  env: {
    username: 'test_user',
    password: 'ComplicatedPassword123!4',
  },
  hosts: {
    'vmware-suitecrm.my': '{{ TARGET_IP }}',
  },
  defaultCommandTimeout: 40000,
  viewportWidth: 1800,
  viewportHeight: 800,
  e2e: {
    setupNodeEvents(on, config) {},
  },
}
