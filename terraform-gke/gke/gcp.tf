#####################################################################
# Google Cloud Platform
#####################################################################
provider "google" {
	credentials = "${file("/home/tailp/Works/Devops/Demo/natural-metric-235613-a44060dc139e.json")}"
	project = "${var.project}"
	region  = "${var.region}"
}
