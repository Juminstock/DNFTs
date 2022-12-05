# DNFTs [Dinamic Non Fungible Token]()
[Logo](https://cdn.pixabay.com/photo/2022/02/28/08/15/geometric-shapes-7038730__340.jpg)
Creación de un NFT dinámico implementando los servicios de Pinata cloud, OpenSea testnet y Metamask.

Aquí te explico los pasos esenciales para la creación de tu NFT dinámico que cambie cada vez que el usuario realicé una acción determinada, sigue cada paso 😉.

1. Lo primero que debes hacer es subir los archivos que complementarán a tu NFT a un servicio IPFS, esto para seguir con el paradigma de descentralización. En mi caso usé el servicio de [Pinata cloud](https://www.pinata.cloud/), es un sencillo de usar.
2. Para cada archivo que subas a la red IPFS deberás crear un archivo .JSON que almacenará la metada la cual será leída por los Marketplaces de NFTS como OpenSea, Rarible, etc. Para ello deberás seguir este [Standard](https://docs.opensea.io/docs/metadata-standards).
3. Éste archivo .JSON deberá ser subido también a la red IPFS y deberás extraer el URI ya que es éste el que será incorporado al arreglo en tu smart contract.
4. Crea un smart contract con el standard ERC-721, para ello te recomiendo usar el servicio de [Contract wizard](https://docs.openzeppelin.com/contracts/4.x/wizard).
## Authors

- [@Juminstock](https://twitter.com/Juminstock)
