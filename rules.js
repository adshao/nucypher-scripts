function ApproveListing() {
	return "Approve"
}

function ApproveTx(r) {
	if (r.transaction.from.toLowerCase() == "0x6a6f917a3ff3d33d26bb4743140f205486cd6b4b".toLowerCase()) {
		return "Approve"
	}
    return "Reject"
}

function ApproveSignData(r) {
    return "Approve"
}