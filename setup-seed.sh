# Register new app user
curl -X POST http://supapay.com/api/wallet/register -d "{\"email\":\"damian@mail.com\",\"username\":\"damian\", \"password\":\"testpass123\", \"firstname\":\"Damian\", \"lastname\": \"Fred\"}" -H "Content-Type: application/json"

# Login user to obtain JWT 
curl -X POST http://supapay.com/api/wallet/login -d "{\"email\":\"damian@mail.com\", \"password\":\"testpass123\"}" -H "Content-Type: application/json"