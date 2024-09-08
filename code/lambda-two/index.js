exports.handler = async (event) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello, World lambda two sdfsfsfds!'),
    };
    return response;
};