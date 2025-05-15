import subprocess

def run_robot_tests(
    test_directory="tests",
    include_tag='test',
    exclude_tags=None,
    output_dir="results"
):
    # Build base command
    command = [
        "robot",
        f"--outputdir={output_dir}"
    ]

    # Add include tag
    if include_tag:
        command.append(f"--include={include_tag}")

    # Add exclude tags (can be a list)
    if exclude_tags:
        for tag in exclude_tags:
            command.append(f"--exclude={tag}")

    # Add the test directory or file
    command.append(test_directory)

    # Print the command for debugging
    print("Running command:", " ".join(command))

    # Run the tests
    subprocess.run(command, check=True)

if __name__ == "__main__":
    # Example usage:
    run_robot_tests(
        test_directory="tests",         # folder or single .robot file
        include_tag="smoke",            # tag to include
        exclude_tags=["skip", "broken"] # list of tags to ignore
    )
