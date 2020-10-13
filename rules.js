function ApproveListing() {
	return "Approve"
}

function ApproveTx(r) {
	if (r.transaction.from.toLowerCase() == "0x6A6F917a3FF3d33d26BB4743140F205486cD6B4B") {
		return "Approve"
	}
    return "Reject"
}

function ApproveSignData(r) {
    return "Approve"
}