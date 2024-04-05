# parallel_sum.py - Python 2 script

import multiprocessing

# This function is not utilized in the current script.
# It's an example of a worker function for multiprocessing.
def worker(num):
    """Thread worker function"""
    return 'Worker:', num

def parallel_sum(numbers, workers=2):
    """
    Divide the list of numbers into chunks and use a pool of worker processes
    to calculate the sum of each chunk in parallel.
    """
    pool = multiprocessing.Pool(processes=workers)
    # Map each chunk to sum_chunk function and collect the result
    results = pool.map(sum_chunk, chunkify(numbers, workers))
    pool.close()
    pool.join()
    return sum(results)  # Sum the results of each chunk's sum

def sum_chunk(chunk):
    """Calculate the sum of a list of numbers (chunk)."""
    return sum(chunk)

def chunkify(lst, n):
    """
    Split the list into n chunks. Each chunk is a list of elements,
    distributing the elements to simulate a round-robin distribution.
    """
    return [lst[i::n] for i in xrange(n)]

if __name__ == '__main__':
    numbers = range(100000)  # A list of numbers from 0 to 99999
    result = parallel_sum(numbers, workers=4)  # Calculate the sum using 4 workers
    print(result)
