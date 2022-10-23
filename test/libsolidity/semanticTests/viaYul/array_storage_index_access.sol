contract C {
    uint[] storageArray;
    function test_indices(uint256 len) public
    {
        while (storageArray.length < len)
            storageArray.push();
        while (storageArray.length > len)
            storageArray.pop();
        for (uint i = 0; i < len; i++)
            storageArray[i] = i + 1;

        for (uint i = 0; i < len; i++)
            require(storageArray[i] == i + 1);
    }
}
// ----
// test_indices(uint256): 1 ->
// test_indices(uint256): 129 ->
// gas irOptimized: 3021484
// gas legacy: 3071683
// gas legacyOptimized: 3014415
// test_indices(uint256): 5 ->
// gas irOptimized: 578032
// gas legacy: 575321
// gas legacyOptimized: 572912
// test_indices(uint256): 10 ->
// gas irOptimized: 158407
// gas legacy: 162657
// gas legacyOptimized: 158422
// test_indices(uint256): 15 ->
// gas irOptimized: 173467
// gas legacy: 179782
// gas legacyOptimized: 173727
// test_indices(uint256): 0xFF ->
// gas irOptimized: 5681652
// gas legacy: 5780977
// gas legacyOptimized: 5668997
// test_indices(uint256): 1000 ->
// gas irOptimized: 18208919
// gas legacy: 18602799
// gas legacyOptimized: 18179744
// test_indices(uint256): 129 ->
// gas irOptimized: 4158842
// gas legacy: 4169611
// gas legacyOptimized: 4126312
// test_indices(uint256): 128 ->
// gas irOptimized: 412700
// gas legacy: 465768
// gas legacyOptimized: 418968
// test_indices(uint256): 1 ->
// gas irOptimized: 581575
// gas legacy: 577432
// gas legacyOptimized: 576168
