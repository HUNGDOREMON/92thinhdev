let doRequest = require('./bussiness/doRequest');
let i = 0;
const launchGame = async (username) => {
  var createAccData = {
    method: 'cm',
    username,
    password: `${username}123`,
    currency: 'VND',
  };

  var launch = {
    method: 'lg',
    username,
    product_type: 112,
    platform: 'html5-desktop',
    game_mode: '1',
    game_code: 'SEX001',
  };


  const create = await doRequest(createAccData);
  if (create.error_desc) {
    return create.error_desc
  } else {
    var result = await doRequest(launch);
    return result;
  }
};

const transfer = async (username, type, amount, reference_no) => {
  var data = {
    method: 'ft',
    username,
    product_type: 112,
    fund_type: type === 'deposit' ? '1' : '2',
    amount,
    reference_no,
  };

  const fetchTranser = await doRequest(data);

  console.log(fetchTranser);
  return fetchTranser;
};

export const TC_API = {
  launchGame,
  transfer
};
