export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"
solana-validator --identity /root/validator-keypair.json --ledger /hdd/Solana/Ledger --rpc-port 8899 --known-validator HBMijaCgFGxQ2WTBdRHZafuxj1pWUpyCuVokfxbVt9ws --only-known-rpc --full-rpc-api --dynamic-port-range 8000-8020 --entrypoint entrypoint.mainnet-beta.solana.com:8001 --entrypoint entrypoint2.mainnet-beta.solana.com:8001 --entrypoint entrypoint3.mainnet-beta.solana.com:8001 --entrypoint entrypoint4.mainnet-beta.solana.com:8001 --entrypoint entrypoint5.mainnet-beta.solana.com:8001 --expected-genesis-hash 5eykt4UsFv8P8NJdTREpY1vzqKqZKvdpKuc147dw2N9d --wal-recovery-mode skip_any_corrupted_record --log /hdd/Solana/Ledger/logs --enable-rpc-transaction-history --enable-cpi-and-log-storage --limit-ledger-size 50000000 --no-poh-speed-test > /hdd/Solana/Ledger/output.log 2>&1 &
echo "\nRunning in backgorund. Be sure to double-check with the 'top' command.\n"
echo “Check the stats of the download and ensure it is working as expected with ‘tail +1f /hdd/Solana/Ledger/output.log’”
