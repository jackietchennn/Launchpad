import { useAppSelector } from "@src/redux/hooks";
import { Contract, providers } from "ethers";
import AirdropAbi from '@src/util/abi/Airdrop.json'

const AirdropAddress = '0x7407C05e1E7Bb86c7c6b3BD8d4eA184b9f328e5A'

export const useAirdropContract = () => {
  const chain = useAppSelector(state => state.wallet.chain);
  const signer = useAppSelector(state => state.contract.signer);
  const walletAddress = useAppSelector(state => state.contract.walletAddress);

  const viewProvider = new providers.JsonRpcProvider(chain?.rpc[0]);
  if (!signer || !walletAddress) {
    console.log('no signer')
  }
  const airdropContract = new Contract(AirdropAddress, AirdropAbi.abi, signer);
  return airdropContract
}
