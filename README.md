# DNFTs [Dinamic Non Fungible Token]()
Creación de un NFT dinámico implementando los servicios de Pinata cloud, OpenSea testnet y Metamask.

Aquí te explico los pasos esenciales para la creación de tu NFT dinámico que cambie cada vez que el usuario realicé una acción determinada, sigue cada paso 😉.

1. Lo primero que debes hacer es subir los archivos que complementarán a tu NFT a un servicio IPFS, esto para seguir con el paradigma de descentralización. En mi caso usé el servicio de [Pinata cloud](https://www.pinata.cloud/), es un sencillo de usar.
2. Para cada archivo que subas a la red IPFS deberás crear un archivo .JSON que almacenará la metada la cual será leída por los Marketplaces de NFTS como OpenSea, Rarible, etc. Para ello deberás seguir este [Standard](https://docs.opensea.io/docs/metadata-standards).
3. Éste archivo .JSON deberá ser subido también a la red IPFS y deberás extraer el URI ya que es éste el que será incorporado al arreglo en tu smart contract.
4. Crea un smart contract con el standard ERC-721, para ello te recomiendo usar el servicio de [Contract wizard](https://docs.openzeppelin.com/contracts/4.x/wizard).
5. Luego de haber creado el smart contract deberás dentro del mismo crear un array con las URI de los archivos que subiste a la red IPFS, con dicho array haremos los cambios a la metadata.
6. Al tener listo el Script, el paso siguiente será ejecutarlo en la Testnet de Ethereum, para ello utilizaremos Goerli. 👀 Para pedir ETHs de prueba puedes hacerlo a través de la [Faucet de Alchemy](https://goerlifaucet.com/).
7. Para poner en prueba tu smart contracts, abriremos la página de [testnet de Opensea](https://testnets.opensea.io/) la cual nos permitirá visualizar las imágenes asociadas a nuestro DNFT.
## Authors

- [@Juminstock](https://twitter.com/Juminstock)
