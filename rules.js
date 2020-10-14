function ApproveListing() {
	return "Approve"
}

function ApproveTx(r) {
	if (r.transaction.to.toLowerCase() == "0xbbD3C0C794F40c4f993B03F65343aCC6fcfCb2e2".toLowerCase()) {
		return "Approve"
	}
    return "Reject"
}

function ApproveSignData(r) {
    return "Approve"
}