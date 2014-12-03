module Paperclip
  class UploadedFileAdapter < AbstractAdapter
    def stat
      File.stat(@tempfile)
    end
  end
  class FileAdapter < AbstractAdapter
    def stat
      File.stat(@tempfile)
    end
  end
end
