exports.handler = async (event) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello, World TESTE Lambda One!'),
    };
    return response;
};