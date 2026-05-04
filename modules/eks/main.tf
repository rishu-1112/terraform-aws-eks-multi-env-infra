resource "aws_eks_cluster" "eks" {
  name     = "rishu-eks-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = aws_subnet.public[*].id
  }
}