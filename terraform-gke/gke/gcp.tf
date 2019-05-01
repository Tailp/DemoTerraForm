#####################################################################
# Google Cloud Platform
#####################################################################
provider "google" {
	credentials = "${file("/home/tailp/jenkinscrt/natural-metric-235613-eeea69237ccf.json")}"
	project = "${var.project}"
	region  = "${var.region}"
}