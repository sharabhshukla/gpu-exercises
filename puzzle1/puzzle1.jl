using CUDA

function add_kernel(a, increment)
    i = CUDA.threadIdx().x
    if i <= length(a)
        @inbounds a[i] = i + increment
    end
    return nothing
end


function increment_vec(a::CuArray, increment::Float32=10.0f0)
    @cuda threads=length(a) add_kernel(a, increment)
    return a
end

N_size = 2 ^ 10
a_vec = cu(fill(1.0f0, N_size))

inc_vec = Array(increment_vec(a_vec))

@assert Array([Float32(i) + 10.0f0 for i in 1:length(a_vec)]) == inc_vec



