local opt = vim.opt	

opt.number = true  -- Hiện số dòng
opt.relativenumber = true -- Số dòng tương đối
opt.mouse = 'a' -- Hỗ trợ chuột
opt.tabstop = 2 -- Tab = 2 spaces 
opt.ignorecase = true -- Bỏ qua chữ hoa chữ thường khi tìm kiếm
opt.smartcase = true -- Tự động phân biệt hoa/thường nếu từ khóa tìm kiếm có chữ in hoa
opt.hlsearch = false -- Không highlight kết quả tìm kiếm
opt.wrap = false -- Không tự động xuống dòng khi văn bản dài
opt.breakindent = true -- Giữ thụt lề khi xuống dòng (nếu wrap được bật)
opt.shiftwidth = 2 -- Thụt lề sẽ là 4 spaces  
opt.splitright = true -- Phân tách cửa sổ dọc 
opt.splitbelow = true -- Phân tách cửa sổ ngang
opt.cursorline = true -- Bật màu sắc số dòng hiện tại
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

