-- Function to check if the current buffer file has a specific extension
function current_buffer_has_extension()
    local extension = ".nt"
    -- Get the name of the current buffer file
    local filename = vim.api.nvim_buf_get_name(0)
    
    if extension:sub(1, 1) ~= "." then
        extension = "." .. extension
    end
    
    -- Get the length of the extension
    local ext_length = #extension
    
    -- Check if the filename ends with the extension
    if filename:sub(-ext_length) == extension then
      print("Hello, World!\n")
    end
end

current_buffer_has_extension()
