variable "bucket" {
    description = <<HEREDOC
    Optional but highly recommended - Name of the bucket. If omitted, Terraform will assign a random,
    unique name. Must be lowercase and less than or equal to 63 characters in length.
    HEREDOC
}

variable "force_destroy" {
    description = <<HEREDOC
    Optional - Boolean that indicates all objects (including any locked objects) should be deleted 
    from the bucket when the bucket is destroyed so that the bucket can be destroyed without error.
    HEREDOC
    default = false
}

variable "tags" {
    description = <<HEREDOC
    Optional - Map of tags to assign to the bucket.
    HEREDOC
    default = {}
}